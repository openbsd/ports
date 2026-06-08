COMMENT=	library to determine file type

V=		5.48
DISTNAME=	file-${V}
PKGNAME=	libmagic-${V}

SHARED_LIBS +=  magic                5.2      # 1.0

CATEGORIES=	sysutils devel

HOMEPAGE=	https://www.darwinsys.com/file/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB =  c m z

SITES=		https://astron.com/pub/file/

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-fsect-man5

DEBUG_PACKAGES=	${BUILD_PACKAGES}

post-install:
	mv ${PREFIX}/bin/{,e}file
	mv ${PREFIX}/man/man1/{,e}file.1

.include <bsd.port.mk>
