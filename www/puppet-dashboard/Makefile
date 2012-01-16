# $OpenBSD: Makefile,v 1.9 2012/01/16 21:10:28 robert Exp $

COMMENT=	overview of your Puppet ecosystem

V=		1.2.4
DISTNAME=	puppet-dashboard-bundled-gems-${V}
PKGNAME=	puppet-dashboard-${V}
CATEGORIES=	www sysutils

HOMEPAGE=	http://www.puppetlabs.com/puppet/related-projects/dashboard/

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES=	lang/ruby

MASTER_SITES=	http://blade2k.humppa.hu/distfiles/ \
		http://puppetlabs.com/downloads/dashboard/

RUN_DEPENDS=	databases/ruby-mysql \
		devel/ruby-rake \
		devel/ruby-rdoc \
		${MODRUBY_ICONV_DEPENDS}

PKG_ARCH=	*
NO_BUILD=	Yes
NO_REGRESS=	Yes

PREFIX=         /var/www
INSTDIR=        ${PREFIX}/puppet-dashboard
SUBST_VARS=     INSTDIR V

do-install:
	@mkdir -p ${INSTDIR}
	@cd ${WRKSRC} && tar -cf - * | tar -C ${INSTDIR} -xf -
	@find ${PREFIX} -type f -name "*~" -exec rm {} \;
	@chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
