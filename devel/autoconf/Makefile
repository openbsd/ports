# $OpenBSD: Makefile,v 1.8 1999/03/01 23:46:36 espie Exp $
#

DISTNAME=       autoconf-2.13
CATEGORIES=	devel

MAINTAINER=	marc@OpenBSD.ORG

SEPARATE_BUILD=yes
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= autoconf

# Both are needed for now as bsd.port.mk does not cause RUN_DEPENDS to
# be created before running configure, which causes the build to do the
# wrong thing.  The RUN_DEPENDS is needed for packages.
#
RUN_DEPENDS=	gm4:${PORTSDIR}/devel/m4
BUILD_DEPENDS=	gm4:${PORTSDIR}/devel/m4

GNU_CONFIGURE=	yes

post-install:
	@if [ ! -f ${PREFIX}/info/dir ]; then \
	  ${SED} -ne '1,/Menu:/p' /usr/share/info/dir > ${PREFIX}/info/dir; \
	 fi
	@install-info ${PREFIX}/info/autoconf.info ${PREFIX}/info/dir
	@install-info ${PREFIX}/info/standards.info ${PREFIX}/info/dir

.include <bsd.port.mk>
