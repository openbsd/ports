# $OpenBSD: pkgpath.mk,v 1.55 2014/02/11 10:34:34 espie Exp $
# ex:ts=4 sw=4 filetype=make:
#	pkgpath.mk - 2003 Marc Espie
#	This file is in the public domain.

# definitions common to bsd.port.mk and bsd.port.subdir.mk

PORTSDIR_PATH ?= ${PORTSDIR}:${PORTSDIR}/mystuff
TMPDIR ?= /tmp
READMES_TOP ?= ${PORTSDIR}
DANGEROUS ?= No

_PERLSCRIPT = perl ${PORTSDIR}/infrastructure/bin

.if !defined(PKGPATH)
PKGPATH != PORTSDIR_PATH=${PORTSDIR_PATH} \
	${_PERLSCRIPT}/getpkgpath ${.CURDIR}
.  if empty(PKGPATH)
ERRORS += "Fatal: can't figure out PKGPATH"
PKGPATH =${.CURDIR}
.  endif
.endif

# Code to invoke to split dir,-multi,flavor

_pflavor_fragment = \
	broken() { \
	  echo 1>&2 ">> Broken dependency: $$@ $$extra_msg"; \
	  reported=true; \
	} ; \
	multi=''; flavor=''; space=''; \
	reported=false; found_dir=false; sawmulti=false; \
	case "$$subdir" in \
	"") \
		broken "empty directory";; \
	*,*) \
		esubdir=$$subdir,; IFS=,; first=true; \
		for i in $$esubdir; do \
			if $$first; then \
				dir=$$i; first=false; continue; \
			fi; \
			case X"$$i" in \
				X-*) \
					if $$sawmulti; then \
						broken "several subpackages in $$subdir"; \
					fi; \
					multi="$$i"; sawmulti=true;; \
				,) \
					sawflavor=true;; \
				*) \
					sawflavor=true; \
					flavor="$$flavor$$space$$i"; \
					space=' ';; \
			esac \
		done; \
		unset IFS;; \
	*) \
		dir=$$subdir;; \
	esac; \
	toset="PKGPATH=$$dir ARCH=${ARCH}"; \
	case X"$$multi" in \
		X) unset SUBPACKAGE || true;; \
		*) toset="$$toset SUBPACKAGE=\"$$multi\"";; \
	esac; \
	case $$dir in \
	*/) broken "$$dir ends with /";; \
	*//*) broken "$$dir contains //";; \
	esac; \
	if $$sawflavor; then \
		toset="$$toset FLAVOR=\"$$flavor\""; \
	else \
		unset FLAVOR||true; \
	fi; \
	if ! $$reported; then \
		IFS=:; bases=${PORTSDIR_PATH}; \
		for base in $$bases; do \
			cd $$base 2>/dev/null || continue; \
			if [ -L $$dir ]; then \
				broken "$$base/$$dir is a symbolic link"; \
				break; \
			fi; \
			if cd $$dir 2>/dev/null; then \
				found_dir=true; \
				break; \
			fi; \
		done; unset IFS; \
	fi; \
	$$found_dir || $$reported || broken "$$dir non existent"; \
	$$found_dir

_flavor_fragment = sawflavor=false; ${_pflavor_fragment}

_depfile_fragment = \
	case X$${_DEPENDS_FILE} in \
		X) _DEPENDS_FILE=`mktemp ${TMPDIR}/depends.XXXXXXXXX|| exit 1`; \
		export _DEPENDS_FILE; \
		trap "rm -f $${_DEPENDS_FILE}" 0; \
		trap 'exit 1' 1 2 3 13 15;; \
	esac

# the cache may be filled in as root, so try to remove as normal user, THEN
# sudo only if it fails.
_cache_fragment = \
	case X$${_DEPENDS_CACHE} in \
		X) _DEPENDS_CACHE=`mktemp -d ${TMPDIR}/dep_cache.XXXXXXXXX|| exit 1`; \
		export _DEPENDS_CACHE; \
		trap "rm -rf 2>/dev/null $${_DEPENDS_CACHE} || ${SUDO} rm -rf $${_DEPENDS_CACHE}" 0; \
		trap 'exit 1' 1 2 3 13 15;; \
	esac; PKGPATH=${PKGPATH}; export PKGPATH

_MAKE = cd ${.CURDIR} && PKGPATH=${PKGPATH} exec ${MAKE}
_SUDOMAKE = cd ${.CURDIR} && PKGPATH=${PKGPATH} exec ${SUDO} ${MAKE}
_MAKESYS = cd ${.CURDIR} && PKGPATH=${PKGPATH} exec ${_SYSTRACE_CMD} ${MAKE}
_SUDOMAKESYS = cd ${.CURDIR} && PKGPATH=${PKGPATH} exec ${SUDO} ${_SYSTRACE_CMD} ${MAKE}

REPORT_PROBLEM_LOGFILE ?=
.if !empty(REPORT_PROBLEM_LOGFILE)
REPORT_PROBLEM ?= echo "$$subdir ($@)">>${REPORT_PROBLEM_LOGFILE}
.else
REPORT_PROBLEM ?= exit 1
.endif

_recursive_targets = \
	all build checksum configure deinstall distclean extract fake fetch \
	fetch-all full-all-depends full-build-depends \
	full-test-depends full-run-depends \
	install install-all lib-depends-check \
	license-check link-categories manpages-check package patch \
	prepare show-prepare-results repackage test regress reinstall \
	unlink-categories update update-or-install update-or-install-all \
	describe dump-vars homepage-links print-plist print-plist-all \
	print-plist-contents print-plist-libs \
	show verbose-show show-size show-fake-size \
	check-register check-register-all lock unlock list-distinfo \
	show-prepare-test-results

_dangerous_recursive_targets = \
	makesum plist update-patches update-plist 

_recursive_depends_targets = \
	all-dir-depends build-dir-depends test-dir-depends run-dir-depends
_recursive_cache_targets = \
	print-plist-with-depends print-plist-libs-with-depends \
	print-plist-all-with-depends print-package-signature \
	print-update-signature port-lib-depends-check 
