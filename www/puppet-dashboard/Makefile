# $OpenBSD: Makefile,v 1.2 2010/04/12 16:25:54 jasper Exp $

COMMENT=	overview of your Puppet ecosystem

V=		0.2.1
DISTNAME=	puppet-dashboard-$V
PKGNAME=	${DISTNAME}p0
CATEGORIES=	www sysutils

HOMEPAGE=	http://www.puppetlabs.com/puppet/related-projects/dashboard/

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES=	lang/ruby

# Upstream only has stupid git tarballs.
MASTER_SITES=	http://www.phil.uu.nl/~lievisse/distfiles/

RUN_DEPENDS=	::databases/ruby-mysql \
		::devel/ruby-rake \
		::lang/ruby,-iconv

PKG_ARCH=	*
EXTRACT_ONLY=
NO_BUILD=	Yes
NO_REGRESS=	Yes

PREFIX=         /var/www
INSTDIR=        ${PREFIX}/puppet-dashboard
SUBST_VARS=     INSTDIR V

do-install:
	@cd ${PREFIX} && tar zxf ${FULLDISTDIR}/${DISTFILES}
	@mv ${INSTDIR}-${V} ${INSTDIR}
	@find ${PREFIX} -type f -name "*~" -exec rm {} \;
	@chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
