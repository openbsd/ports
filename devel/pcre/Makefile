# $OpenBSD: Makefile,v 1.12 2004/01/14 17:21:52 jakob Exp $

COMMENT=	"perl-compatible regular expression library"

DISTNAME=	pcre-4.5
CATEGORIES=	devel

MASTER_SITES=	ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/ \
		${MASTER_SITE_SOURCEFORGE:=pcre/}

HOMEPAGE=	http://www.pcre.org/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}

post-install:
	@strip ${PREFIX}/bin/{pcregrep,pcretest}

.include <bsd.port.mk>
