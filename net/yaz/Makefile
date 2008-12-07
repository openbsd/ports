# $OpenBSD: Makefile,v 1.5 2008/12/07 18:26:43 okan Exp $

COMMENT=		Z39.50/SR client and API library
DISTNAME=		yaz-3.0.38
CATEGORIES=		net

SHARED_LIBS+=		yaz		1.1	# 3.0
SHARED_LIBS+=		yaz_icu		1.2	# 3.0
SHARED_LIBS+=		yaz_server	1.1	# 3.0

HOMEPAGE=		http://www.indexdata.dk/yaz/

MAINTAINER=		Andreas Bihlmaier <andreas.bihlmaier@gmx.de>

# Revised BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

USE_LIBTOOL=		Yes

WANTLIB=		c m ncurses pthread readline z iconv intl

MASTER_SITES=		http://ftp.indexdata.dk/pub/yaz/ \
			ftp://ftp.indexdata.dk/pub/yaz/

LIB_DEPENDS=		xml2::textproc/libxml \
			gpg-error::security/libgpg-error \
			gcrypt::security/libgcrypt \
			exslt,xslt::textproc/libxslt \
			icudata,icui18n,icuuc::textproc/icu4c

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--without-gnutls

.include <bsd.port.mk>
