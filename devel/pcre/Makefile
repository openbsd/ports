# $OpenBSD: Makefile,v 1.24 2008/01/12 23:07:19 martynas Exp $

COMMENT=	perl-compatible regular expression library

DISTNAME=	pcre-7.5

SHARED_LIBS=	pcre		2.1 \
		pcrecpp		3.1 \
		pcreposix	1.3

CATEGORIES=	devel

MASTER_SITES=	ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/ \
		${MASTER_SITE_SOURCEFORGE:=pcre/}

HOMEPAGE=	http://www.pcre.org/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--enable-utf8 \
			--enable-unicode-properties

.include <bsd.port.mk>
