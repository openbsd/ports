# $OpenBSD: Makefile,v 1.11 2009/08/10 15:24:12 msf Exp $

SHARED_ONLY=	Yes

COMMENT=	Ruby interface to some common LDAP libraries

DISTNAME=	ruby-ldap-0.9.7
PKGNAME=	${DISTNAME}p6
CATEGORIES=	databases

HOMEPAGE=	http://ruby-ldap.sourceforge.net/

MAINTAINER=	Jeremy Evans <jeremyevans0@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=ruby-ldap/}

MODULES=		lang/ruby

WANTLIB=		c crypto m pthread ssl

LIB_DEPENDS=		${MODRUBY_LIB_DEPENDS} \
			ldap.>=9,ldap_r.>=9,lber.>=9::databases/openldap

CONFIGURE_STYLE=	ruby extconf

REGRESS_TARGET=		test
REGRESS_DEPENDS=	:openldap-server-*:databases/openldap,-server

do-regress:
	cd ${WRKSRC} &&	/bin/sh ./test/test.sh ruby openldap2 \
		${LOCALBASE}/libexec/slapd ${SYSCONFDIR}/openldap/schema/

.include <bsd.port.mk>
