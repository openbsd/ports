# $OpenBSD: Makefile,v 1.14 2012/05/25 01:42:29 lteo Exp $

COMMENT=	packet manipulation backend of Netdude framework

DISTNAME=	libnetdude-0.10a
REVISION=	3
SHARED_LIBS=	netdude	1.0
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=netdude/}

HOMEPAGE=	http://netdude.sourceforge.net/

LIB_DEPENDS=	net/libpcapnav \
		devel/glib \
		devel/libtool,-ltdl
REGRESS_DEPENDS=	${FULLPKGPATH}

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		ltdl pcap pcapnav glib

USE_LIBTOOL=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+=	--with-html-dir=${PREFIX}/share/doc/libnetdude \
			--disable-gtk-doc \
			--datadir=${PREFIX}/lib
# Make sure it can find and use our libltdl.
CONFIGURE_ENV+= 	CPPFLAGS="-I${LOCALBASE}/include/libltdl/"
CFLAGS+=		"-Dlt_ptr_t=lt_ptr"
.include <bsd.port.mk>

