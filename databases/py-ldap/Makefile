# $OpenBSD: Makefile,v 1.10 2006/06/03 09:29:42 alek Exp $

SHARED_ONLY=	Yes

COMMENT=	"LDAP client API for Python"

DISTNAME=	python-ldap-2.0.10
PKGNAME=	${DISTNAME:S/python/py/}p0
CATEGORIES=	databases

HOMEPAGE=	http://python-ldap.sourceforge.net/

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>

# Python
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

WANTLIB=	crypto ssl

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=python-ldap/}

LIB_DEPENDS=	ldap_r.7,lber.7::databases/openldap \
		sasl2.2::security/cyrus-sasl2

MODULES=	lang/python

EXAMPLESDIR=	${PREFIX}/share/examples/py-ldap

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	cd ${WRKSRC}; tar cf - Demo | tar xf - -C ${EXAMPLESDIR}

do-regress: fake
	@cd ${WRKSRC}/Tests/Lib && ${MAKE_ENV} \
		PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./test_ldapurl.py 

.include <bsd.port.mk>
