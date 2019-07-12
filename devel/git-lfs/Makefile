# $OpenBSD: Makefile,v 1.14 2019/07/12 20:44:09 sthen Exp $

COMMENT =		Git extension for versioning large files

GH_PROJECT =		git-lfs
GH_ACCOUNT =		git-lfs
GH_TAGNAME =		v2.5.2

CATEGORIES =		devel

HOMEPAGE =		https://git-lfs.github.com/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		c pthread

MODULES =		lang/go \
			lang/ruby
MODRUBY_BUILDDEP =	No
MODRUBY_RUNDEP =	No

BUILD_DEPENDS =		textproc/groff \
			textproc/ruby-ronn
RUN_DEPENDS =		devel/git

# Convert the manpages with ronn instead of mangen.go
post-build:
	cd ${WRKSRC}/docs/man/ && \
		for m in *.ronn; do ronn${MODRUBY_BINREV} -r $$m; done

post-install:
	${INSTALL_MAN} ${WRKSRC}/docs/man/*.1 ${PREFIX}/man/man1/
	${INSTALL_MAN} ${WRKSRC}/docs/man/*.5 ${PREFIX}/man/man5/

.include <bsd.port.mk>
