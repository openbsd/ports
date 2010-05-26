# $OpenBSD: Makefile,v 1.3 2010/05/26 20:00:02 robert Exp $

COMMENT=	overview of your Puppet ecosystem

V=		1.0.0
DISTNAME=	puppet-dashboard-$V
PKGNAME=	${DISTNAME}
CATEGORIES=	www sysutils
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://www.puppetlabs.com/puppet/related-projects/dashboard/

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES=	lang/ruby

MASTER_SITES=	http://puppetlabs.com/downloads/dashboard/

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
	@mv ${PREFIX}/reductivelabs-puppet-dashboard-v${V}-0-gd5918df ${INSTDIR}
	@find ${PREFIX} -type f -name "*~" -exec rm {} \;
	@chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
