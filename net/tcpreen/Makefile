# $OpenBSD: Makefile,v 1.27 2018/10/24 14:28:09 sthen Exp $

COMMENT=		simple tcp re-engineering tool

DISTNAME=		tcpreen-1.4.4
REVISION =		5
CATEGORIES=		net

HOMEPAGE=		http://www.remlab.net/tcpreen/

MAINTAINER=		Nigel Taylor <nigel@openbsd.org>

MASTER_SITES=		http://www.remlab.net/files/tcpreen/stable/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c iconv intl m ${COMPILER_LIBCXX} 

COMPILER =		base-clang ports-gcc base-gcc

EXTRACT_SUFX=		.tar.bz2

LIB_DEPENDS=		devel/gettext

FAKE_FLAGS+=		localedir="${PREFIX}/share/locale" \
			gettextsrcdir="${PREFIX}/share/gettext/po"

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/admin

.include <bsd.port.mk>
