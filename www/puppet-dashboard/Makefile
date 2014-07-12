# $OpenBSD: Makefile,v 1.32 2014/07/12 13:41:47 ajacoutot Exp $

COMMENT=	overview of your Puppet ecosystem

DISTNAME=	puppet-dashboard-1.2.23
REVISION=	9
CATEGORIES=	www sysutils

HOMEPAGE=	https://puppetlabs.com/puppet/related-projects/dashboard/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby
MODRUBY_REV=	1.8

MASTER_SITES=	http://puppetlabs.com/downloads/dashboard/

RUN_DEPENDS=	databases/ruby-mysql,${MODRUBY_FLAVOR} \
		devel/ruby-rdoc,${MODRUBY_FLAVOR} \
		www/ruby-rack,${MODRUBY_FLAVOR} \
		${MODRUBY_ICONV_DEPENDS}

PKG_ARCH=	*
NO_BUILD=	Yes
NO_TEST=	Yes

PREFIX=		${VARBASE}/www
INSTDIR=        ${PREFIX}/puppet-dashboard
SUBST_VARS=     INSTDIR MODRUBY_BINREV RUBY

pre-configure:
	cd ${WRKSRC} && grep -Elr 'env.*ruby' . | \
		xargs perl -pi -e 's,/usr/bin/env ruby,${RUBY},'
	perl -pi -e 's,/usr/share,${PREFIX},g' \
		${WRKSRC}/examples/puppet-dashboard.cleanup_reports.cron \
		${WRKSRC}/lib/data_generator.rb
	perl -pi -e 's, /usr/bin/ruby,${RUBY},' ${WRKSRC}/bin/external_node


do-install:
	mkdir -p ${INSTDIR}
	cd ${WRKSRC} && ${TAR} -cf - * | tar -C ${INSTDIR} -xf -
	chown -R ${SHAREOWN}:${SHAREGRP} ${INSTDIR}

.include <bsd.port.mk>
