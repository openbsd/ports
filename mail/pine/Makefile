# $OpenBSD: Makefile,v 1.48 2002/12/09 20:54:12 jakob Exp $

COMMENT=	"program for Internet E-mail and News"
COMMENT-pico=	"small text editor"
COMMENT-pilot=	"file system browser"

CATEGORIES=	mail news

VERSION=	4.50
PICO_VERSION=	4.3
PILOT_VERSION=	2.0

DISTNAME=	pine${VERSION}
PKGNAME=	pine-${VERSION}
PKGNAME-pico=	pico-${PICO_VERSION}
PKGNAME-pilot=	pilot-${PILOT_VERSION}

MASTER_SITES=	ftp://ftp.cac.washington.edu/pine/ \
		ftp://ftp.sunet.se/pub/unix/mail/pine/

HOMEPAGE=	http://www.washington.edu/pine/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes

FLAVORS=	kerberos ldap
FLAVOR?=

MULTI_PACKAGES=	-pico -pilot
SUBPACKAGE?=

.if ${SUBPACKAGE} == "-pico"
CATEGORIES=	editors
.elif ${SUBPACKAGE} == "-pilot"
CATEGORIES=	sysutils
.endif

PINE_BUILD_FLAGS=	CC="${CC}" EXTRACFLAGS="${CFLAGS}" \
			SSLTYPE="unix" LOCALBASE="${LOCALBASE}"

.if ${FLAVOR:L:Mkerberos}
PINE_BUILD_FLAGS+=	EXTRAAUTHENTICATORS="gss"
.endif

.if ${FLAVOR:L:Mldap}
PINE_BUILD_FLAGS+=	LDAPLIBS="-L${LOCALBASE}/lib -lldap -llber" \
			LDAPCFLAGS="-DENABLE_LDAP -I${LOCALBASE}/include"
.if ${SUBPACKAGE} == ""
LIB_DEPENDS+=	ldap.2:openldap-client-2.*:databases/openldap
.endif
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
