# $OpenBSD: Makefile,v 1.32 2001/08/14 19:21:00 brad Exp $

COMMENT=	"Program for Internet E-mail and News, with pico"
COMMENT-pico=	"small text editor"
COMMENT-pine=	"Program for Internet E-mail and News, without pico"

VERSION=	4.33
DISTNAME=	pine${VERSION}
PKGNAME=	pine+pico-${VERSION}
FULLPKGNAME-pico=pico-${VERSION}
PKGNAME-pine=	pine-${VERSION}
NEED_VERSION=	1.435
MASTER_SITES=	ftp://ftp.cac.washington.edu/pine/ \
		ftp://ftp.sunet.se/pub/unix/mail/pine/

HOMEPAGE=	http://www.washington.edu/pine/

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=	ldap
FLAVOR?=

MULTI_PACKAGES=	-pico -pine
SUBPACKAGE?=

.if ${SUBPACKAGE} == "-pico"
CATEGORIES=	editors
.elif ${SUBPACKAGE} == "-pine"
CATEGORIES=	mail news
LIB_DEPENDS=	c-client.2.1::mail/c-client
.else
CATEGORIES=	mail news editors
LIB_DEPENDS=	c-client.2.1::mail/c-client
.endif

.if ${FLAVOR:L} == "ldap" && ${SUBPACKAGE} != "-pico"
LIB_DEPENDS+=	ldap.2::databases/openldap
.endif

.if ${FLAVOR:L} == "ldap"
MAKE_FLAGS=	LDAPLIBS="-lldap -llber" \
		LDAPCFLAGS="-DENABLE_LDAP -I${LOCALBASE}/include"
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
