# $OpenBSD: Makefile,v 1.29 2013/11/09 23:19:02 naddy Exp $

COMMENT =	perfect hash functions, to help write parsers

DISTNAME =	gperf-3.0.4
REVISION =	0
CATEGORIES =   	devel

MAINTAINER =	Marc Espie <espie@openbsd.org>

HOMEPAGE =	https://www.gnu.org/software/gperf/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m stdc++

MASTER_SITES =	${MASTER_SITE_GNU:=gperf/}

post-extract:
	rm ${WRKDIST}/doc/gperf.info

# Don't use SEPARATE_BUILD, the doc doesn't like it
CONFIGURE_STYLE =	gnu
# and it also insists upon installing under $(prefix)/doc...
MAKE_FLAGS =	docdir='${TRUEPREFIX}/share/doc/gperf'

# N.B. gperf is a build dependency for libiconv; take care if
# gettext support is added to gperf.
.include <bsd.port.mk>
