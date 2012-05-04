# $OpenBSD: Makefile,v 1.26 2012/05/04 20:17:50 jeremy Exp $

COMMENT=	Ruby interface to some common LDAP libraries

PKGNAME=	ldap-0.9.12
DISTNAME=	ruby-${PKGNAME}
CATEGORIES=	databases

HOMEPAGE=	https://github.com/alexey-chebotar/ruby-ldap

MAINTAINER=	Jeremy Evans <jeremy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/ruby

WANTLIB=		crypto pthread ssl ldap lber

LIB_DEPENDS=		databases/openldap

CONFIGURE_STYLE=	ruby gem ext
CONFIGURE_ARGS=		--without-libldap

REGRESS_TARGET=		test
REGRESS_DEPENDS=	databases/openldap,-server
REGRESS_IS_INTERACTIVE = Yes

do-regress:
	cd ${WRKSRC} &&	/bin/sh ./test/test.sh ruby openldap2 \
		${LOCALBASE}/libexec/slapd ${SYSCONFDIR}/openldap/schema/

.include <bsd.port.mk>
