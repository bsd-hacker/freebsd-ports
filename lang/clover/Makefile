# $FreeBSD$

PORTNAME=	clover
PORTVERSION=	${MESAVERSION}
PORTREVISION=	3
CATEGORIES=	lang

COMMENT=	Mesa "Clover" OpenCL library

BUILD_DEPENDS=	libclc>=0.3.0:devel/libclc \
		opencl>=0:devel/opencl
LIB_DEPENDS=	libOpenCL.so:devel/ocl-icd
RUN_DEPENDS=	libclc>=0.3.0:devel/libclc \
		opencl>=0:devel/opencl

ONLY_FOR_ARCHS=		i386 amd64
ONLY_FOR_ARCHS_REASON=	Clover needs a GPU supported by the Radeon KMS driver

.include <bsd.port.options.mk>

# Keep in sync with devel/libclc
.if ${LLVM_DEFAULT:S,-devel,990,} >= 90
LLVM_DEFAULT=	80
.endif

.include "${.CURDIR:H:H}/graphics/mesa-dri/Makefile.common"

CONFIGURE_ARGS+=	--enable-opencl --enable-opencl-icd --disable-dri \
			--disable-egl --disable-gbm --disable-gles2 --disable-glx \
			--disable-va --disable-vdpau --disable-xvmc \
			--with-gallium-drivers=r600,radeonsi	# only supported GPUs
LDFLAGS_i386=		-Wl,-znotext

#MESA_BUILD_WRKSRC=	src/util src/compiler src/mesa src/gallium
MESA_INSTALL_WRKSRC=	src/gallium/targets/opencl src/gallium/targets/pipe-loader

.include "${MASTERDIR}/Makefile.targets"

pre-configure:
	@if [ -e ${LOCALBASE}/bin/llvm-config${LLVM_DEFAULT} ] && \
		! [ -e ${LOCALBASE}/bin/clang${LLVM_DEFAULT} ]; then \
		${ECHO_MSG} "Your llvm${LLVM_DEFAULT} is not built with clang support, which is required."; \
		${FALSE}; \
	fi

.include <bsd.port.post.mk>
