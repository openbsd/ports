# $OpenBSD: Makefile,v 1.1.1.1 2005/05/27 23:36:37 mjc Exp $

COMMENT=	"packet manipulation backend of the Netdude trace file editing framework"

DISTNAME=	libnetdude-0.7
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
CONFIGURE_ARGS+=	--disable-gtk-doc --with-html-dir=${PREFIX}/share/doc/libnetdude

.include <bsd.port.mk>
