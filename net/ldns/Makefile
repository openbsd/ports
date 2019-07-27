# $OpenBSD: Makefile,v 1.10 2019/07/27 13:54:13 sthen Exp $

MULTI_PACKAGES=	-main -drill -utils

COMMENT-main=	DNS library modelled after Net::DNS
COMMENT-drill=	DNS debugger
COMMENT-utils=	LDNS utilities

V=		1.7.1
DISTNAME=	ldns-$V
PKGNAME-main=	libldns-$V
PKGNAME-drill=	drill-$V
PKGNAME-utils=	ldns-utils-$V

SHARED_LIBS +=	ldns                 7.1      # 3.0

CATEGORIES=	net

MASTER_SITES=	https://www.nlnetlabs.nl/downloads/ldns/
HOMEPAGE=	https://www.nlnetlabs.nl/projects/ldns/

# BSD
PERMIT_PACKAGE=	Yes

# ssl included as ssl.h has been used.
WANTLIB-main=	crypto ssl
WANTLIB-drill=	c crypto ldns>=6.1
WANTLIB-utils=	c crypto ldns>=6.1 pcap ssl

LIB_DEPENDS=	${FULLPKGPATH-main}=$V
LIB_DEPENDS-main=	# empty

USE_GMAKE=	Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-drill \
			--with-examples \
			--disable-ldns-config \
			--with-trust-anchor=/var/unbound/db/root.key \
			--with-ca-file=/etc/ssl/cert.pem

# "OpenSSL does not support offline DANE verification (Needed for the
# DANE-TA usage type). Please upgrade OpenSSL to version >= 1.1.0 or rerun
# with --disable-dane-verify or --disable-dane-ta-usage"
CONFIGURE_ARGS+=	--disable-dane-ta-usage

CONFIGURE_ENV+=		ac_cv_prog_doxygen= \
			CPPFLAGS=-DOPENSSL_NO_ENGINE

NO_TEST=		Yes

.include <bsd.port.mk>
