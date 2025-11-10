COMMENT =		Git extension for versioning large files

V =			3.7.1
DISTNAME =		git-lfs-$V
DISTFILES =		git-lfs-v$V.tar.gz
PKGNAME =		git-lfs-$V

CATEGORIES =		devel

HOMEPAGE =		https://git-lfs.github.com/
SITES =			https://github.com/git-lfs/git-lfs/releases/download/v$V/

# to generate for a new version, bump V, comment-out DISTFILES.v,
# make makesum, make dist, copy out, uncomment DISTFILES.v
SITES.v =		https://spacehopper.org/mirrors/
DISTFILES.v =		git-lfs-$V-vendor.tar.gz

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		c pthread

MODULES =		lang/go
BUILD_DEPENDS =		textproc/asciidoctor
RUN_DEPENDS =		devel/git
ALL_TARGET =		github.com/git-lfs/git-lfs/v3

dist:
	tmp=`mktemp -d`; \
	cd $$tmp; \
	tar xzf ${FULLDISTDIR}/${DISTFILES}; \
	cd git-lfs-$V; \
	go mod tidy; \
	go mod vendor; \
	cd ..; \
	tar cvzf ../git-lfs-$V-vendor.tar.gz git-lfs-$V/vendor; \
	ls -l /tmp/git-lfs-$V-vendor.tar.gz

post-configure:
	cd ${MODGO_WORKSPACE}/src; \
	mkdir -p github.com/git-lfs/; \
	mv ${ALL_TARGET}/vendor/github.com/git-lfs/* github.com/git-lfs/; \
	rmdir ${ALL_TARGET}/vendor/github.com/git-lfs

	cd ${MODGO_WORKSPACE}/src; \
	mv ${ALL_TARGET}/vendor/github.com/* github.com/; \
	rmdir ${ALL_TARGET}/vendor/github.com

	cd ${MODGO_WORKSPACE}/src; \
	mv ${ALL_TARGET}/vendor/* ./; \
	rmdir ${ALL_TARGET}/vendor

	cd ${WRKSRC}; \
	${MAKE_ENV} GOOS= GOARCH= go generate github.com/git-lfs/git-lfs/v3/{commands,tr}

post-build:
	cd ${WRKSRC}/docs/man/; asciidoctor -b manpage *.adoc

post-install:
	${INSTALL_MAN} ${WRKSRC}/docs/man/*.1 ${PREFIX}/man/man1/
	${INSTALL_MAN} ${WRKSRC}/docs/man/*.5 ${PREFIX}/man/man5/
	mv ${PREFIX}/bin/v3 ${PREFIX}/bin/git-lfs

.include <bsd.port.mk>
