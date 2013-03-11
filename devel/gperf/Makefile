# $OpenBSD: Makefile,v 1.27 2013/03/11 10:50:04 espie Exp $

COMMENT =	perfect hash functions, to help write parsers

DISTNAME =	gperf-3.0.4
CATEGORIES =   	devel

MAINTAINER =	Marc Espie <espie@openbsd.org>

HOMEPAGE =	http://www.gnu.org/software/gperf/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m stdc++

MASTER_SITES =	${MASTER_SITE_GNU:=gperf/}

post-extract:
	rm ${WRKDIST}/doc/gperf.info

# Don't use SEPARATE_BUILD, the doc doesn't like it
CONFIGURE_STYLE =	gnu
# fix build on vax, otherwise compilation ends with ICE
.if ${MACHINE_ARCH} == "vax"
CFLAGS:= ${CFLAGS:N-O*}
.endif
# and it also insists upon installing under $(prefix)/doc...
MAKE_FLAGS =	docdir='${TRUEPREFIX}/share/doc/gperf'

# N.B. gperf is a build dependency for libiconv; take care if
# gettext support is added to gperf.
.include <bsd.port.mk>
