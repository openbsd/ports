# $OpenBSD: Makefile,v 1.15 2005/08/31 19:55:37 sturm Exp $

COMMENT=	"perl-compatible regular expression library"

DISTNAME=	pcre-4.5
PKGNAME=	${DISTNAME}p1
CATEGORIES=	devel

MASTER_SITES=	ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/ \
		${MASTER_SITE_SOURCEFORGE:=pcre/}

HOMEPAGE=	http://www.pcre.org/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}

post-install:
	@strip ${PREFIX}/bin/{pcregrep,pcretest}

.include <bsd.port.mk>
