# $OpenBSD: Makefile,v 1.1.1.1 2003/09/29 21:31:24 naddy Exp $

COMMENT=	"converter to/from quoted-printable encoding"

DISTNAME=	qprint-1.0
CATEGORIES=	converters
HOMEPAGE=	http://www.fourmilab.ch/webtools/qprint/

# public domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

CONFIGURE_STYLE=gnu
ALL_TARGET=	prog
REGRESS_TARGET=	wringer

.include <bsd.port.mk>
