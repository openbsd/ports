# $OpenBSD: Makefile,v 1.2 2002/01/11 00:51:05 naddy Exp $

COMMENT=		"Fast and light window manager with plug-ins"

DISTNAME=		golem-0.0.4
CATEGORIES=     	X11
NEED_VERSION=		1.503

HOMEPAGE=		http://golem.sourceforge.net/

MAINTAINER=		Damien Couderc <couderc.damien@wanadoo.fr>

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE}
MASTER_SITE_SUBDIR=	golem

USE_X11=		Yes

CONFIGURE_STYLE=	autoconf dest

NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/golem
	${INSTALL_DATA} ${WRKSRC}/{THEMES,PLUGINS} ${PREFIX}/share/doc/golem

.include <bsd.port.mk>
.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:L} == "yes"
CONFIGURE_FLAGS+=	--disable-plugins
.endif
