# $OpenBSD: Makefile,v 1.12 2013/03/11 11:44:48 espie Exp $

COMMENT=	overview of your Puppet ecosystem

V=		1.2.4
DISTNAME=	puppet-dashboard-bundled-gems-${V}
PKGNAME=	puppet-dashboard-${V}
REVISION=	1
CATEGORIES=	www sysutils

HOMEPAGE=	http://www.puppetlabs.com/puppet/related-projects/dashboard/

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODULES=	lang/ruby

MASTER_SITES=	http://blade2k.humppa.hu/distfiles/ \
		http://puppetlabs.com/downloads/dashboard/

RUN_DEPENDS=	databases/ruby-mysql,${MODRUBY_FLAVOR} \
		devel/ruby-rake,${MODRUBY_FLAVOR} \
		devel/ruby-rdoc,${MODRUBY_FLAVOR} \
		${MODRUBY_ICONV_DEPENDS}

PKG_ARCH=	*
NO_BUILD=	Yes
NO_TEST=	Yes

PREFIX=         /var/www
INSTDIR=        ${PREFIX}/puppet-dashboard
SUBST_VARS=     INSTDIR V

do-install:
	@mkdir -p ${INSTDIR}
	@cd ${WRKSRC} && tar -cf - * | tar -C ${INSTDIR} -xf -
	@find ${PREFIX} -type f -name "*~" -exec rm {} \;
	@chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
