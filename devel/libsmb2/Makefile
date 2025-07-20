COMMENT=	userspace client library for accessing SMB2/SMB3 shares

DISTNAME=	libsmb2-6.2.0
GH_ACCOUNT=	sahlberg
GH_PROJECT=	libsmb2
GH_COMMIT=	572e2f6c2db38d8267d6459861b31b71c3c7b178

CATEGORIES=	devel

SHARED_LIBS=	smb2	2.0

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

MODULES=	devel/cmake

CONFIGURE_ARGS+=-DENABLE_GSSAPI=OFF \
		-DENABLE_LIBKRB5=OFF

NO_TEST=	Yes

.include <bsd.port.mk>
