# $OpenBSD: Makefile,v 1.10 2015/07/06 11:25:36 sthen Exp $

SHARED_ONLY=	Yes
COMMENT=	G.729a voice codec for Asterisk
DISTNAME=	asterisk-g72x-1.1
PKGNAME=	${DISTNAME:S/g72x/g729/}
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	telephony
MASTER_SITES=	http://asterisk.hosting.lv/src/
REVISION=	0

HOMEPAGE=	http://asterisk.hosting.lv/

# GPL frontend to patented algorithm; free to use for non-commercial purposes
PERMIT_DISTFILES_FTP=	contains non-compiled proprietary Intel code
PERMIT_PACKAGE_CDROM=	patents
PERMIT_PACKAGE_FTP=	Yes

WANTLIB += c

NO_TEST=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	telephony/asterisk>=11.0,<=12.0

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-asterisk-includes=${LOCALBASE}/include \
		--with-itu

.include <bsd.port.mk>
