# $OpenBSD: Makefile,v 1.17 2010/11/15 00:22:54 espie Exp $

COMMENT=	Ruby interface to some common LDAP libraries

PKGNAME=	ldap-0.9.7
DISTNAME=	ruby-${PKGNAME}
REVISION=	10
CATEGORIES=	databases

HOMEPAGE=	http://ruby-ldap.sourceforge.net/

MAINTAINER=	Jeremy Evans <jeremy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=ruby-ldap/}

MODULES=		lang/ruby

WANTLIB=		crypto pthread ssl ldap ldap_r lber

LIB_DEPENDS=		databases/openldap

CONFIGURE_STYLE=	ruby extconf

REGRESS_TARGET=		test
REGRESS_DEPENDS=	databases/openldap,-server

do-regress:
	cd ${WRKSRC} &&	/bin/sh ./test/test.sh ruby openldap2 \
		${LOCALBASE}/libexec/slapd ${SYSCONFDIR}/openldap/schema/

.include <bsd.port.mk>
