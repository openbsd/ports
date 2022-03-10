#!/bin/sh
set -eux

LLVMINST="${LOCALBASE}"
ZIG1BUILD="${WRKBUILD}/zig-stage1"
ZIG2BUILD="${WRKBUILD}/zig-stage2"

# disable some llvm protections in the llvm compiler to regain performance
case $(machine) in
aarch64)	XFLAGS="-fno-ret-protector" ;;
amd64)		XFLAGS="-fno-ret-protector -mno-retpoline" ;;
i386)		XFLAGS="-fno-ret-protector -mno-retpoline" ;;
mips64)		XFLAGS="-fno-ret-protector -fomit-frame-pointer" ;;
mips64el)	XFLAGS="-fno-ret-protector -fomit-frame-pointer" ;;
powerpc)	XFLAGS="-fno-ret-protector"
		CMAKE_SHARED_LINKER_FLAGS="-Wl,-relax"
		;;
esac

zig1_configure() {
	[ ! -d "${ZIG1BUILD}" ] && mkdir "${ZIG1BUILD}"

	# get clang libs
	for f in $(ls "${LLVMINST}"/lib/libclang*.a); do
		clang_libraries="${clang_libraries:-}${clang_libraries:+;}${f}"
	done

	# configure zig stage1
	cd "${ZIG1BUILD}"
	env CFLAGS="${XFLAGS:-} ${CFLAGS:-}" \
	    CXXFLAGS="${XFLAGS:-} ${CXXFLAGS:-}" \
	    VERBOSE=1 \
	    MODCMAKE_PORT_BUILD=yes \
	    cmake -GNinja "${WRKSRC}/zig" \
		-DCMAKE_BUILD_TYPE=Release \
		-DCMAKE_C_COMPILER="${CC:-cc}" \
		-DCMAKE_CXX_COMPILER="${CXX:-c++}" \
		\
		-DZIG_VERSION="${TARGET_VERSION}" \
		-DZIG_PREFER_LLVM_CONFIG=ON \
		-DZIG_STATIC_LLVM=ON \
		-DZIG_PREFER_CLANG_CPP_DYLIB=OFF \
		\
		-DLLVM_CONFIG_EXE="${LLVMINST}/bin/llvm-config" \
		-DLLVM_INCLUDE_DIRS="${LLVMINST}/include" \
		-DLLVM_LIBDIRS="${LLVMINST}/lib" \
		\
		-DCLANG_LIBRARIES="${clang_libraries}" \
		-DCLANG_INCLUDE_DIRS="${LLVMINST}/include" \
		\
		-DLLD_INCLUDE_DIRS="${LLVMINST}/include" \
		-DLLD_LLDCOFF_LIB="${LLVMINST}/lib/liblldCOFF.a" \
		-DLLD_LLDCOMMON_LIB="${LLVMINST}/lib/liblldCommon.a" \
		-DLLD_LLDCORE_LIB="${LLVMINST}/lib/liblldCore.a" \
		-DLLD_LLDDRIVER_LIB="${LLVMINST}/lib/liblldDriver.a" \
		-DLLD_LLDELF_LIB="${LLVMINST}/lib/liblldELF.a" \
		-DLLD_LLDMACHO_LIB="${LLVMINST}/lib/liblldMachO.a" \
		-DLLD_LLDMINGW_LIB="${LLVMINST}/lib/liblldMinGW.a" \
		-DLLD_LLDREADERWRITER_LIB="${LLVMINST}/lib/liblldReaderWriter.a" \
		-DLLD_LLDWASM_LIB="${LLVMINST}/lib/liblldWasm.a" \
		-DLLD_LLDYAML_LIB="${LLVMINST}/lib/liblldYAML.a" 
}

zig1_build() {
	cd "${ZIG1BUILD}"
	ninja -v -j${MAKE_JOBS:-1}

	# keep lib-dir next to zig binary
	# (for building stage2 or running tests)
	ln -fs "${WRKSRC}/zig/lib" "${ZIG1BUILD}/lib"
}

zig2_build() {
	cd "${WRKSRC}/zig"
	"${ZIG1BUILD}/zig" build install \
		--prefix "${ZIG2BUILD}" \
		--search-prefix "${LLVMINST}" \
		--global-cache-dir "${ZIG2BUILD}/zig-cache" \
		--cache-dir "${ZIG2BUILD}/zig-cache" \
		--verbose \
		--verbose-link \
		-Denable-llvm=true \
		-Dversion-string="${TARGET_VERSION}"
}

zig_install() {
	set -x
	#cp -vR "${ZIG2BUILD}/lib/zig" "${PREFIX}/lib"

	# install lib dir
	cd "${WRKSRC}/zig"
	"${ZIG1BUILD}/zig" build install \
		--prefix "${PREFIX}" \
		--global-cache-dir "${ZIG2BUILD}/zig-cache" \
		--cache-dir "${ZIG2BUILD}/zig-cache" \
		-Dlib-files-only=true

	# install zig stage1, as stage2 doesn't fully work for now
	${BSD_INSTALL_PROGRAM} "${ZIG1BUILD}/zig" \
		"${PREFIX}/bin/zig"
}

zig_test() {
	set -x
	cd "${WRKSRC}/zig"
	"${ZIG1BUILD}/zig" build test \
		-Dskip-compile-errors \
		-Dskip-non-native \
		--global-cache-dir "${ZIG2BUILD}/zig-cache" \
		--cache-dir "${ZIG2BUILD}/zig-cache" \
		--verbose \
		--verbose-link
}

usage() {
    	echo "$0 version [build|install|test]"
    	exit 1
}

if [ $# -ne 2 ]; then
	usage
fi

# set zig version
TARGET_VERSION=${1}

case "${2}" in
build)
	zig1_configure
	zig1_build
	;;
install)
	zig_install
	;;
test)
	# build stage2 as part of testing
	zig2_build
	# zig testsuite
	zig_test
	;;
*)
	usage
	;;
esac
