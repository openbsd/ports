# $OpenBSD: Makefile,v 1.9 2020/11/19 23:20:23 abieber Exp $

COMMENT =	REST backend for the restic backup tool

MODGO_MODNAME =	github.com/restic/rest-server
MODGO_VERSION =	v0.10.0

DISTNAME =	rest-server-${MODGO_VERSION}
PKGNAME =	restic-${DISTNAME:S/-v/-/}

CATEGORIES =	sysutils

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

SUBST_VARS +=		VARBASE

MODULES =		lang/go

do-install:
	cp ${MODGO_WORKSPACE}/bin/rest-server ${PREFIX}/bin/restic-rest-server

MODGO_MODULES =	\
	github.com/beorn7/perks					 v0.0.0-20160804104726-4c0e84591b9a \
	github.com/golang/protobuf				 v1.0.0 \
	github.com/gorilla/handlers				 v1.3.0 \
	github.com/inconshreveable/mousetrap			 v1.0.0 \
	github.com/matttproud/golang_protobuf_extensions	 v1.0.0 \
	github.com/miolini/datacounter				 v0.0.0-20171104152933-fd4e42a1d5e0 \
	github.com/prometheus/client_golang			 v0.8.0 \
	github.com/prometheus/client_model			 v0.0.0-20171117100541-99fa1f4be8e5 \
	github.com/prometheus/common				 v0.0.0-20180110214958-89604d197083 \
	github.com/prometheus/procfs				 v0.0.0-20180212145926-282c8707aa21 \
	github.com/spf13/cobra					 v0.0.1 \
	github.com/spf13/pflag					 v1.0.0 \
	goji.io							 v2.0.2+incompatible \
	golang.org/x/crypto					 v0.0.0-20180214000028-650f4a345ab4 \
	golang.org/x/sync					 v0.0.0-20200317015054-43a5402ce75a

.include <bsd.port.mk>
