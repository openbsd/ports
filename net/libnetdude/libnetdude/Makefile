# $OpenBSD: Makefile,v 1.3 2005/12/30 23:00:17 steven Exp $

COMMENT=	"packet manipulation backend of the Netdude trace file editing framework"

DISTNAME=	libnetdude-0.7
PKGNAME=	${DISTNAME}p1
SHARED_LIBS=		netdude	0.0
MODGNU_SHARED_LIBS=	netdude	''
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=netdude/}

HOMEPAGE=	http://netdude.sourceforge.net/

MAINTAINER=	Markus Friedl <markus@openbsd.org> \
		Michael Coulter <mjc@openbsd.org>

LIB_DEPENDS=	pcapnav::net/libpcapnav \
		glib::devel/glib

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c pcap

USE_LIBTOOL=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+=	--with-html-dir=${PREFIX}/share/doc/libnetdude \
			--disable-gtk-doc --datadir=${PREFIX}/lib
.include <bsd.port.mk>

