# $OpenBSD: Makefile,v 1.17 2005/12/23 14:38:32 bernd Exp $

COMMENT=	"perl-compatible regular expression library"

DISTNAME=	pcre-6.4
PKGNAME=	${DISTNAME}p0
SHARED_LIBS=		pcre		1.0 \
			pcrecpp		1.0 \
			pcreposix	1.0
MODGNU_SHARED_LIBS=	pcre		'' \
			pcrecpp		'' \
			pcreposix	''

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
