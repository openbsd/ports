# $OpenBSD: Makefile,v 1.5 2004/12/30 00:17:52 espie Exp $

COMMENT=		"Wake On Lan client"

DISTNAME=		wol-0.7.1
PKGNAME=		${DISTNAME}p0
CATEGORIES=		net

HOMEPAGE=		http://ahh.sourceforge.net/wol/

MAINTAINER=		Johan Fredin <griffin@legonet.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c 

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=ahh/}

MODULES=		devel/gettext

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
