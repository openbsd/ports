# $OpenBSD: Makefile,v 1.19 2009/03/26 08:16:30 jasper Exp $

COMMENT=	perfect hash functions, to help write parsers

DISTNAME=	gperf-3.0.1
PKGNAME=	${DISTNAME}p0
CATEGORIES=   	devel

MAINTAINER=	Marc Espie <espie@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m stdc++

MASTER_SITES=	${MASTER_SITE_GNU:=gperf/}

post-extract:
	rm ${WRKDIST}/doc/gperf.info

# Don't use SEPARATE_BUILD, the doc doesn't like it
CONFIGURE_STYLE=	gnu
# and it also insists upon installing under $(prefix)/doc...
MAKE_FLAGS=	docdir='${TRUEPREFIX}/share/doc/gperf'

# N.B. gperf is a build dependency for libiconv; take care if
# gettext support is added to gperf.
.include <bsd.port.mk>
