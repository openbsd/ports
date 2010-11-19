# $OpenBSD: Makefile,v 1.11 2010/11/19 22:31:34 espie Exp $

COMMENT=	packet manipulation backend of Netdude framework

DISTNAME=	libnetdude-0.10a
REVISION=	0
SHARED_LIBS=	netdude	1.0
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=netdude/}

HOMEPAGE=	http://netdude.sourceforge.net/

MAINTAINER=	Rui Reis <rui@openbsd.org>

LIB_DEPENDS=	net/libpcapnav \
		devel/glib

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c pcap pcapnav glib

USE_LIBTOOL=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+=	--with-html-dir=${PREFIX}/share/doc/libnetdude \
			--disable-gtk-doc --datadir=${PREFIX}/lib
.include <bsd.port.mk>

