# $OpenBSD: Makefile,v 1.21 2007/06/13 07:19:06 jakob Exp $

COMMENT=	"perl-compatible regular expression library"

DISTNAME=	pcre-7.1

SHARED_LIBS=	pcre		1.1 \
		pcrecpp		2.1 \
		pcreposix	1.1

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
