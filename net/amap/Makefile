# $OpenBSD: Makefile,v 1.1.1.1 2004/06/26 05:56:20 mjc Exp $

COMMENT=	"network application fingerprinting scanner"

DISTNAME=	amap-4.5
CATEGORIES=	net
MASTER_SITES=	${HOMEPAGE}/releases/

HOMEPAGE=	http://www.thc.org

MAINTAINER=	Michael Coulter <mjc@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	pcre::devel/pcre

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS=		--prefix='$${${DESTDIRNAME}}${PREFIX}'

MAKE_FLAGS+=		CC="${CC}" XIPATHS="-I${LOCALBASE}/include"

FAKE_FLAGS=		MANDIR='${DESTDIR}${PREFIX}/man/man1'

NO_REGRESS=		Yes

.include <bsd.port.mk>
