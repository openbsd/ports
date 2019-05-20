# $OpenBSD: Makefile,v 1.15 2019/05/20 22:15:20 naddy Exp $

COMMENT=		Wake On Lan client

DISTNAME=		wol-0.7.1
REVISION=		4
CATEGORIES=		net

HOMEPAGE=		http://ahh.sourceforge.net/wol/

MAINTAINER=		Johan Fredin <johan@spelaroll.se>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c iconv intl

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=ahh/}

LIB_DEPENDS=		devel/gettext,-runtime

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
