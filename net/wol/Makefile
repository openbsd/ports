# $OpenBSD: Makefile,v 1.16 2019/07/12 20:48:52 sthen Exp $

COMMENT=		Wake On Lan client

DISTNAME=		wol-0.7.1
REVISION=		4
CATEGORIES=		net

HOMEPAGE=		http://ahh.sourceforge.net/wol/

MAINTAINER=		Johan Fredin <johan@spelaroll.se>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c iconv intl

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=ahh/}

LIB_DEPENDS=		devel/gettext,-runtime

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
