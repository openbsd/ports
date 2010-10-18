# $OpenBSD: Makefile,v 1.9 2010/10/18 18:36:59 espie Exp $

COMMENT=		Wake On Lan client

DISTNAME=		wol-0.7.1
REVISION=		1
CATEGORIES=		net

HOMEPAGE=		http://ahh.sourceforge.net/wol/

MAINTAINER=		Johan Fredin <johan@spelaroll.se>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c 

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=ahh/}

MODULES=		devel/gettext

CONFIGURE_STYLE=	gnu
USE_GROFF =	Yes

.include <bsd.port.mk>
