# $OpenBSD: Makefile,v 1.27 2001/02/02 16:47:13 brad Exp $

VERSION=	4.33
DISTNAME=	pine${VERSION}
NEED_VERSION=	1.336
MASTER_SITES=	ftp://ftp.cac.washington.edu/pine/ \
		ftp://ftp.sunet.se/pub/unix/mail/pine/

HOMEPAGE=	http://www.washington.edu/pine/

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes

MULTI_PACKAGES=	-pine -pico
SUBPACKAGE?=

.if ${SUBPACKAGE} == "-pine"
PKGNAME=	pine-${VERSION}
CATEGORIES=	mail news
LIB_DEPENDS=	c-client.2.1::mail/c-client
.elif ${SUBPACKAGE} == "-pico"
PKGNAME=	pico-${VERSION}
CATEGORIES=	editors
.else
PKGNAME=	pine+pico-${VERSION}
CATEGORIES=	mail news editors
LIB_DEPENDS=	c-client.2.1::mail/c-client
.endif

FLAVORS=        ldap
FLAVOR?=

.if ${FLAVOR:L:Mldap}
LIB_DEPENDS+=	ldap.2::databases/openldap
MAKE_FLAGS=	LDAPLIBS="-lldap -llber" \
		LDAPCFLAGS="-DENABLE_LDAP -I${PREFIX}/include"
.endif

post-patch:
	@sed -e s#!!PREFIX!!#${PREFIX}#g \
		${WRKSRC}/doc/tech-notes.txt > ${WRKSRC}/doc/tech-notes.txt.new
	@mv ${WRKSRC}/doc/tech-notes.txt.new ${WRKSRC}/doc/tech-notes.txt

do-configure:
	@cp -f ${FILESDIR}/Makefile ${WRKSRC}/Makefile

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pine
	${INSTALL_DATA} ${WRKSRC}/doc/tech-notes.txt ${PREFIX}/share/doc/pine
	${INSTALL_DATA} ${FILESDIR}/dot.pinerc.pgp.sample ${PREFIX}/share/doc/pine
	cd ${WRKSRC}/bin; ${INSTALL_PROGRAM} pico pilot pine ${PREFIX}/bin
	cd ${FILESDIR}; ${INSTALL_SCRIPT} pgpencrypt pgpdecode pgpsign ${PREFIX}/bin
	cd ${WRKSRC}/doc; ${INSTALL_MAN} pico.1 pilot.1 pine.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
