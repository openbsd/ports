# $OpenBSD: Makefile,v 1.3 2004/03/04 17:49:26 espie Exp $

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

AUTOCONF_VERSION=	2.13
CONFIGURE_STYLE=	autoconf no-autoheader

ALL_TARGET=	prog
REGRESS_TARGET=	wringer

.include <bsd.port.mk>
