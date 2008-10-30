# $OpenBSD: Makefile,v 1.1.1.1 2008/10/30 11:13:39 mbalmer Exp $

COMMENT=	PluggableAuthService plugins that use LDAP

DISTNAME=	LDAPMultiPlugins-1.5
PKGNAME=	zope-${DISTNAME:L}p2
CATEGORIES=	www

HOMEPAGE=	http://www.dataflake.org/software/ldapmultiplugins/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}${DISTNAME:L:S/-/_/}/
EXTRACT_SUFX=	.tgz

MODULES=	www/zope

RUN_DEPENDS=	::www/zope-ldapuserfolder

do-install:
	${INSTALL_DATA_DIR} ${MODZOPE_PRODUCTSDIR}
	cd ${WRKDIR}; \
	    tar -cf - ${DISTNAME:C/-.*//g} | \
	    tar xf - -C ${MODZOPE_PRODUCTSDIR}

.include <bsd.port.mk>
