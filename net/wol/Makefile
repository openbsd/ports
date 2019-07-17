# $OpenBSD: Makefile,v 1.17 2019/07/17 14:46:34 danj Exp $

COMMENT=		Wake On Lan client

DISTNAME=		wol-0.7.1
REVISION=		5
CATEGORIES=		net

HOMEPAGE=		http://ahh.sourceforge.net/wol/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c iconv intl

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=ahh/}

LIB_DEPENDS=		devel/gettext,-runtime

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
