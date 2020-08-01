# $OpenBSD: Makefile,v 1.8 2020/08/01 11:20:57 sthen Exp $

COMMENT-main=	${COMMENT}
COMMENT-doc=	${COMMENT} (documentation)

PORTROACH=	limit:^1\.
DISTNAME=	bird-1.6.8
REVISION=	0

WANTLIB-main=	c curses pthread readline

MULTI_PACKAGES=	-main -doc
FULLPKGNAME-doc= ${DISTNAME:S/bird-/bird-doc-/}
FULLPKGPATH-doc= net/bird/1,-doc

# IPv6 support must be built with separate flags, however the filenames
# do not conflict, so the two packages may be installed together.
FLAVORS=	v6
FLAVOR?=
FLAVOR_COMMA=	${FLAVOR_EXT:S/-/,/g}
SUBST_VARS=	FLAVOR_COMMA SIX

.if ${FLAVOR:Mv6}
FULLPKGNAME-main= ${DISTNAME:S/bird-/bird-v6-/}
FULLPKGPATH-main= net/bird/1,-main,v6
SIX=		6
.else
PKGNAME-main=	${DISTNAME}
.endif

CONFIGURE_ARGS+= --enable-pthreads

.if ${FLAVOR:Mv6}
CONFIGURE_ARGS+= --enable-ipv6
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bird
	${INSTALL_DATA} ${WRKDIR}/bird-doc-*/doc/* ${PREFIX}/share/doc/bird/
	${INSTALL_DATA} ${WRKSRC}/doc/*.html ${PREFIX}/share/doc/bird/

.include <bsd.port.mk>
