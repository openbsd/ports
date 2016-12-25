# $OpenBSD: Makefile,v 1.14 2016/12/25 16:43:11 jca Exp $

COMMENT=		Wake On Lan client

DISTNAME=		wol-0.7.1
REVISION=		3
CATEGORIES=		net

HOMEPAGE=		http://ahh.sourceforge.net/wol/

MAINTAINER=		Johan Fredin <johan@spelaroll.se>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c iconv intl

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=ahh/}

LIB_DEPENDS=		devel/gettext

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
