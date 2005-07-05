# $OpenBSD: Makefile,v 1.2 2005/07/05 00:08:04 mjc Exp $

COMMENT=	"packet manipulation backend of the Netdude trace file editing framework"

DISTNAME=	libnetdude-0.7
PKGNAME=	${DISTNAME}p0
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

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+=	--with-html-dir=${PREFIX}/share/doc/libnetdude \
			--disable-gtk-doc --datadir=${PREFIX}/lib
.include <bsd.port.mk>

