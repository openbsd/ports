# $OpenBSD: Makefile,v 1.9 2009/02/09 20:48:23 naddy Exp $

SHARED_ONLY=	Yes

COMMENT=	Ruby interface to some common LDAP libraries

DISTNAME=	ruby-ldap-0.9.7
PKGNAME=	${DISTNAME}p5
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

LIB_DEPENDS=		ruby.>=1::lang/ruby \
			ldap.>=9,ldap_r.>=9,lber.>=9::databases/openldap

CONFIGURE_STYLE=	ruby extconf

REGRESS_TARGET=		test
REGRESS_DEPENDS=	:openldap-server-*:databases/openldap,-server

do-regress:
	cd ${WRKSRC} &&	/bin/sh ./test/test.sh ruby openldap2 \
		${LOCALBASE}/libexec/slapd ${SYSCONFDIR}/openldap/schema/

.include <bsd.port.mk>
