# $OpenBSD: Makefile,v 1.4 2007/01/10 18:02:27 bernd Exp $

COMMENT=	"graphical front-end to the diff program"

V=		4.1.3
DISTNAME=	tkdiff-${V}-unix
PKGNAME=	tkdiff-${V}p0
CATEGORIES=	devel sysutils

HOMEPAGE=	http://tkdiff.sourceforge.net/

MAINTAINER=	Vlad Glagolev <stelzy@gmail.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tkdiff/}

RUN_DEPENDS=	:tk-8.4.*:x11/tk/8.4

NO_BUILD=	Yes
NO_REGRESS=	Yes
USE_X11=	Yes

do-configure:
	@perl -pi -e 's,!!LOCALBASE!!,${LOCALBASE},' ${WRKSRC}/tkdiff

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/tkdiff ${PREFIX}/bin

.include <bsd.port.mk>
