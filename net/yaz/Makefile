# $OpenBSD: Makefile,v 1.8 2010/11/11 17:20:28 espie Exp $

COMMENT=		Z39.50/SR client and API library
DISTNAME=		yaz-3.0.49
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
USE_GROFF =		Yes

WANTLIB=		c m ncurses pthread readline z iconv intl \
			xml2 gpg-error gcrypt exslt xslt icudata \
			icui18n icuuc

MASTER_SITES=		http://ftp.indexdata.dk/pub/yaz/ \
			ftp://ftp.indexdata.dk/pub/yaz/

LIB_DEPENDS=		::textproc/libxml \
			::security/libgpg-error \
			::security/libgcrypt \
			::textproc/libxslt \
			::textproc/icu4c

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--without-gnutls

.include <bsd.port.mk>
