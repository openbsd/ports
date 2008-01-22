# $OpenBSD: Makefile,v 1.3 2008/01/22 21:59:49 okan Exp $

COMMENT=		Z39.50/SR client and API library
DISTNAME=		yaz-3.0.22
CATEGORIES=		net

SHARED_LIBS+=		yaz		1.0	# 3.0
SHARED_LIBS+=		yaz_icu		1.0	# 3.0
SHARED_LIBS+=		yaz_server	1.0	# 3.0

HOMEPAGE=		http://www.indexdata.dk/yaz/

MAINTAINER=		Andreas Bihlmaier <andreas.bihlmaier@gmx.de>

# Revised BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

USE_LIBTOOL=		Yes

WANTLIB=		c crypto m ncurses pthread readline ssl z iconv intl

MASTER_SITES=		http://ftp.indexdata.dk/pub/yaz/ \
			ftp://ftp.indexdata.dk/pub/yaz/

LIB_DEPENDS=		xml2::textproc/libxml \
			gpg-error::security/libgpg-error \
			gcrypt::security/libgcrypt \
			exslt,xslt::textproc/libxslt

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
