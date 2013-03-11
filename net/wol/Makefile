# $OpenBSD: Makefile,v 1.12 2013/03/11 11:35:58 espie Exp $

COMMENT=		Wake On Lan client

DISTNAME=		wol-0.7.1
REVISION=		2
CATEGORIES=		net

HOMEPAGE=		http://ahh.sourceforge.net/wol/

MAINTAINER=		Johan Fredin <johan@spelaroll.se>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c 

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=ahh/}

MODULES=		devel/gettext

CONFIGURE_STYLE=	gnu
USE_GROFF =		Yes

.include <bsd.port.mk>
