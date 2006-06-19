# $OpenBSD: Makefile,v 1.19 2006/06/19 09:46:43 espie Exp $

COMMENT=	"perl-compatible regular expression library"

DISTNAME=	pcre-6.4
PKGNAME=	${DISTNAME}p1
SHARED_LIBS=		pcre		1.0 \
			pcrecpp		2.0 \
			pcreposix	1.0

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

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}

USE_LIBTOOL=		Yes

.include <bsd.port.mk>
