# $OpenBSD: Makefile,v 1.45 2002/11/25 17:15:34 brad Exp $

COMMENT=	"Program for Internet E-mail and News, with pico"
COMMENT-pico=	"small text editor"
COMMENT-pine=	"Program for Internet E-mail and News, without pico"

VERSION=	4.44
PICO_VERSION=	4.2
DISTNAME=	pine${VERSION}
PKGNAME=	pine+pico-${VERSION}p1
FULLPKGNAME-pico=pico-${PICO_VERSION}
PKGNAME-pine=	pine-${VERSION}p1
MASTER_SITES=	ftp://ftp.cac.washington.edu/pine/ \
		ftp://ftp.sunet.se/pub/unix/mail/pine/

HOMEPAGE=	http://www.washington.edu/pine/

BUILD_DEPENDS=	:c-client->=4.41:mail/c-client

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes

FLAVORS=	ldap
FLAVOR?=

MULTI_PACKAGES=	-pico -pine
SUBPACKAGE?=

.if ${SUBPACKAGE} == "-pico"
CATEGORIES=	editors
.elif ${SUBPACKAGE} == "-pine"
CATEGORIES=	mail news
LIB_DEPENDS=	c-client.4:c-client->=4.41:mail/c-client
.else
CATEGORIES=	mail news editors
LIB_DEPENDS=	c-client.4:c-client->=4.41:mail/c-client
.endif

.if ${FLAVOR:L} == "ldap" && ${SUBPACKAGE} != "-pico"
LIB_DEPENDS+=	ldap.2:openldap-client-2.*:databases/openldap
.endif

PINE_BUILD_FLAGS=	CC="${CC}" LOCALBASE="${LOCALBASE}"

.if ${FLAVOR:L} == "ldap"
PINE_BUILD_FLAGS+=	LDAPLIBS="-lldap -llber" \
			LDAPCFLAGS="-DENABLE_LDAP -I${LOCALBASE}/include"
.endif

do-build:
	@sed -e s#!!PREFIX!!#${PREFIX}#g \
		${WRKSRC}/doc/tech-notes.txt > ${WRKSRC}/doc/tech-notes.txt.new
	@mv ${WRKSRC}/doc/tech-notes.txt.new ${WRKSRC}/doc/tech-notes.txt
	@cd ${WRKSRC}; ./build ${PINE_BUILD_FLAGS} bso

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pine
	${INSTALL_DATA} ${WRKSRC}/doc/tech-notes.txt ${PREFIX}/share/doc/pine
	${INSTALL_DATA} ${FILESDIR}/dot.pinerc.pgp.sample ${PREFIX}/share/doc/pine
	cd ${WRKSRC}/bin; ${INSTALL_PROGRAM} pico pilot pine rpdump rpload \
		${PREFIX}/bin
	cd ${FILESDIR}; ${INSTALL_SCRIPT} pgpencrypt pgpdecode pgpsign ${PREFIX}/bin
	cd ${WRKSRC}/doc; ${INSTALL_MAN} pico.1 pilot.1 pine.1 rpdump.1 rpload.1 \
		${PREFIX}/man/man1

.include <bsd.port.mk>
