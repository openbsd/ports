# $OpenBSD: Makefile,v 1.7 2013/03/11 11:23:52 espie Exp $

COMMENT=	fast maildir search engine

DISTNAME=	nmzmail-1.1
REVISION =	2

CATEGORIES=	mail textproc
HOMEPAGE=	http://www.ecademix.com/JohannesHofmann/nmzmail.html

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c readline termcap

MASTER_SITES=	${HOMEPAGE:nmzmail.html=}

BUILD_DEPENDS=	textproc/namazu
RUN_DEPENDS=	textproc/namazu

AUTOCONF_VERSION=2.63
CONFIGURE_STYLE=autoconf
USE_GROFF =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nmzmail
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/nmzmail/

.include <bsd.port.mk>
