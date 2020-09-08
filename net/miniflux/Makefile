# $OpenBSD: Makefile,v 1.1.1.1 2020/09/08 22:32:42 abieber Exp $

COMMENT =	minimalist and opinionated feed reader

MODGO_MODNAME =	miniflux.app
MODGO_VERSION =	v0.0.0-20200820051733-e1c9e6ccb460

DISTNAME =	miniflux.app-${MODGO_VERSION}
PKGNAME =	miniflux-2.0.23.20200820

CATEGORIES =	net www

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =		lang/go

ALL_TARGET =		${MODGO_MODNAME}/...

SUBST_VARS =		VARBASE \
			SYSCONFDIR

do-install:
	${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/miniflux.app \
		${PREFIX}/bin/miniflux
	${INSTALL_DATA_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/*.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/miniflux
	${INSTALL_DATA} ${FILESDIR}/miniflux.conf ${PREFIX}/share/examples/miniflux

MODGO_MODULES =	\
	cloud.google.com/go			 v0.34.0 \
	github.com/!puerkito!bio/goquery	 v1.5.1 \
	github.com/andybalholm/cascadia		 v1.1.0 \
	github.com/cheekybits/is		 v0.0.0-20150225183255-68e9c0620927 \
	github.com/coreos/go-oidc		 v2.2.1+incompatible \
	github.com/dustin/go-humanize		 v1.0.0 \
	github.com/fsnotify/fsnotify		 v1.4.7 \
	github.com/golang/protobuf		 v1.4.0 \
	github.com/google/go-cmp		 v0.4.0 \
	github.com/gorilla/mux			 v1.7.4 \
	github.com/lib/pq			 v1.8.0 \
	github.com/matryer/try			 v0.0.0-20161228173917-9ac251b645a2 \
	github.com/pquerna/cachecontrol		 v0.0.0-20180517163645-1555304b9b35 \
	github.com/spf13/pflag			 v1.0.3 \
	github.com/tdewolff/minify/v2		 v2.7.4 \
	github.com/tdewolff/parse/v2		 v2.4.2 \
	github.com/tdewolff/test		 v1.0.6 \
	golang.org/x/crypto			 v0.0.0-20200423211502-4bdfaf469ed5 \
	golang.org/x/net			 v0.0.0-20200425230154-ff2c4b7c35a0 \
	golang.org/x/oauth2			 v0.0.0-20200107190931-bf48bf16ab8d \
	golang.org/x/sync			 v0.0.0-20181221193216-37e7f081c4d4 \
	golang.org/x/sys			 v0.0.0-20200420163511-1957bb5e6d1f \
	golang.org/x/text			 v0.3.2 \
	golang.org/x/tools			 v0.0.0-20180917221912-90fa682c2a6e \
	golang.org/x/xerrors			 v0.0.0-20191204190536-9bdfabe68543 \
	google.golang.org/appengine		 v1.6.6 \
	google.golang.org/protobuf		 v1.21.0 \
	gopkg.in/square/go-jose.v2		 v2.5.0
MODGO_MODFILES =	\
	github.com/golang/protobuf	 v1.2.0 \
	github.com/golang/protobuf	 v1.3.1 \
	github.com/golang/protobuf	 v1.4.0-rc.1 \
	github.com/golang/protobuf	 v1.4.0-rc.1.0.20200221234624-67d41d38c208 \
	github.com/golang/protobuf	 v1.4.0-rc.2 \
	github.com/golang/protobuf	 v1.4.0-rc.4.0.20200313231945-b860323f09d0 \
	github.com/google/go-cmp	 v0.3.0 \
	github.com/google/go-cmp	 v0.3.1 \
	golang.org/x/crypto		 v0.0.0-20190308221718-c2843e01d9a2 \
	golang.org/x/net		 v0.0.0-20180218175443-cbe0f9307d01 \
	golang.org/x/net		 v0.0.0-20180724234803-3673e40ba225 \
	golang.org/x/net		 v0.0.0-20190108225652-1e06a53dbb7e \
	golang.org/x/net		 v0.0.0-20190404232315-eb5bcb51f2a3 \
	golang.org/x/net		 v0.0.0-20190603091049-60506f45cf65 \
	golang.org/x/net		 v0.0.0-20200202094626-16171245cfb2 \
	golang.org/x/sys		 v0.0.0-20181031143558-9b800f95dbbc \
	golang.org/x/sys		 v0.0.0-20190215142949-d0b11bdaac8a \
	golang.org/x/sys		 v0.0.0-20190412213103-97732733099d \
	golang.org/x/sys		 v0.0.0-20200323222414-85ca7c5b95cd \
	golang.org/x/text		 v0.3.0 \
	google.golang.org/appengine	 v1.4.0 \
	google.golang.org/protobuf	 v0.0.0-20200109180630-ec00e32a8dfd \
	google.golang.org/protobuf	 v0.0.0-20200221191635-4d8936d0db64 \
	google.golang.org/protobuf	 v0.0.0-20200228230310-ab0ca4ff8a60 \
	google.golang.org/protobuf	 v1.20.1-0.20200309200217-e05f789c0967

.include <bsd.port.mk>
