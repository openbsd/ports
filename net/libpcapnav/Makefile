# $OpenBSD: Makefile,v 1.10 2013/03/11 11:35:48 espie Exp $

COMMENT=	library for navigating to arbitrary packets in a trace file

DISTNAME=	libpcapnav-0.8
REVISION=	1
SHARED_LIBS=	pcapnav	1.0
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=netdude/}

HOMEPAGE=	http://netdude.sourceforge.net/doco/libpcapnav/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		pcap

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-gtk-doc --with-html-dir=${PREFIX}/share/doc/libpcapnav

# If one of these tools is found at configure stage, it might be used,
# no matter whether we use --disable-gtk-doc or not.
CONFIGURE_ENV +=ac_cv_path_GTKDOC_CHECK="" \
		ac_cv_path_GTKDOC_REBASE="" \
		ac_cv_path_GTKDOC_MKPDF=""

.include <bsd.port.mk>
