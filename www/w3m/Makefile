# $OpenBSD: Makefile,v 1.11 2000/07/10 00:17:55 d Exp $

DISTNAME=	w3m-0.1.10
CATEGORIES=	www
NEED_VERSION=	1.310
MASTER_SITES=	ftp://ftp.firedrake.org/w3m/ \
		ftp://ei5nazha.yz.yamagata-u.ac.jp/w3m/ \
		http://www.instinct.org/w3m/

MAINTAINER=	dugsong@monkey.org
HOMEPAGE=	http://ei5nazha.yz.yamagata-u.ac.jp/~aito/w3m/eng/

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS+=	-nonstop
CONFIGURE_ARGS+=	-prefix "${PREFIX}" -cflags="${CPPFLAGS}"
CONFIGURE_ARGS+=	-lang=en
CONFIGURE_ARGS+=	-model=monster
CONFIGURE_ARGS+=	-model=monster
CONFIGURE_ENV+=		dmail=mail
CONFIGURE_ENV+=		ded=vi
CONFIGURE_ENV+=		dbrowser=lynx
CONFIGURE_ENV+=		dcc="${CC}"
CONFIGURE_ENV+=		dtermlib="${TERMLIB}"
CONFIGURE_ENV+=		def_helpdir="${PREFIX}/share/w3m"
CONFIGURE_ENV+=		def_libdir="${PREFIX}/libexec/w3m"
CONFIGURE_ENV+=		use_nntp=y

MAN1=	w3m.1
DOCS=	FAQ.html HISTORY MANUAL.html \
	README README.cygwin README.dict README.func STORY.html \
	keymap.default keymap.lynx menu.default menu.submenu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/w3m
	${INSTALL_MAN} ${WRKSRC}/doc/w3m.1 ${PREFIX}/man/man1
.for doc in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/doc/${doc} ${PREFIX}/share/doc/w3m
.endfor

.include <bsd.port.mk>
