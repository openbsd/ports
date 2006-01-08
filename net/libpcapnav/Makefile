# $OpenBSD: Makefile,v 1.3 2006/01/08 10:23:02 steven Exp $

COMMENT=	"library for navigating to arbitrary packets in a trace file"

DISTNAME=	libpcapnav-0.6
PKGNAME=	${DISTNAME}p0
SHARED_LIBS=	pcapnav	0.0
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=netdude/}

HOMEPAGE=	http://netdude.sourceforge.net/doco/libpcapnav/

MAINTAINER=	Markus Friedl <markus@openbsd.org> \
		Michael Coulter <mjc@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		pcap

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-gtk-doc --with-html-dir=${PREFIX}/share/doc/libpcapnav

.include <bsd.port.mk>
