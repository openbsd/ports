COMMENT=	userspace client library for accessing SMB2/SMB3 shares

DISTNAME=	libsmb2-6.2.0pl20260809
GH_ACCOUNT=	sahlberg
GH_PROJECT=	libsmb2
GH_COMMIT=	0b2aa4310c7a0510c666fe7da0eebce0f7e93824

CATEGORIES=	devel

SHARED_LIBS=	smb2	3.0 \
		dcerpc	0.0

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1+ + BSD
PERMIT_PACKAGE=	Yes

MODULES=	devel/cmake

CONFIGURE_ARGS+=-DENABLE_GSSAPI=OFF \
		-DENABLE_LIBKRB5=OFF

NO_TEST=	Yes

.include <bsd.port.mk>
